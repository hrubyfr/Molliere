void rootmacro(){
    const int nf = 10;
    std::unique_ptr<TFile> myFile (TFile::Open("Moll_out.root", "RECREATE"));
    TString fnames[nf] = {"Molliere_rad_1.root", "Molliere_rad_2.root", "Molliere_rad_3.root", "Molliere_rad_4.root", "Molliere_rad_5.root", "Molliere_rad_6.root", "Molliere_rad_7.root", "Molliere_rad_8.root", "Molliere_rad_9.root", "Molliere_rad_10.root"};
    TFile* readfiles[nf];
    TH1D* CyllinderAbs_hists[nf];
    TH1D* BoxAbs_hists[nf];
    TString dopt = "";

    double TotalAbs[nf], TotalError[nf], CylAbs[nf], BoxAbs[nf], CylError[nf], BoxError [nf], frac[nf], fracerror[nf];


    TCanvas* Canvas = new TCanvas("Histogram", "Histogram", 1200, 800);
    Canvas->Divide (2);

    for (int i = 0; i < 10; i++){
        readfiles[i] = new TFile(fnames[i]);
        if (!readfiles[i] || readfiles[i]->IsZombie()){
            std::cerr<<"error opening file"<<endl; //error control
            return;
        }
        Canvas -> cd(1);
        CyllinderAbs_hists[i] = (TH1D*) readfiles [i] -> Get("Eabs");
        CyllinderAbs_hists[i]->Draw ("hist" + dopt);
        CylAbs[i] = CyllinderAbs_hists[i]->GetMean();
        CylError[i] = CyllinderAbs_hists[i]->GetMeanError();


        Canvas -> cd(2);
        BoxAbs_hists[i] = (TH1D*) readfiles [i] -> Get("Egap");
        BoxAbs_hists[i] -> Draw ("same" + dopt);
        BoxAbs[i] = BoxAbs_hists[i]->GetMean();
        BoxError[i] = BoxAbs_hists[i]->GetMeanError();

        TotalAbs[i] = BoxAbs[i] + CylAbs[i];
        TotalError[i] = sqrt(CylError[i]*CylError[i] + BoxError[i]*BoxError[i]);

        frac[i] = CylAbs[i]/TotalAbs[i];
        fracerror[i] = sqrt(CylError[i]*CylError[i]*(1/TotalAbs[i])*(1/TotalAbs[i])+TotalError[i]*TotalError[i]*(CylAbs[i]/(TotalAbs[i]*TotalAbs[i]))*(CylAbs[i]/(TotalAbs[i]*TotalAbs[i])));


        dopt = "same";

    }

    double range[nf];
    range[0] = 1;
    for (int i = 1; i < 11; i++){
        range[i] = range[i-1] + 5;
    }


    TCanvas* GraphCanvas = new TCanvas ("Molliere", "Molliere", 1200, 800);
    GraphCanvas->cd();
    auto Molliere_graph = new TGraphErrors (nf, range, frac, 0, fracerror);
    Molliere_graph -> SetTitle ("Zavislost pomeru energie absorbovane ve valci a celkove absorbovane energie na polomeru valce v olovenem skle");
    Molliere_graph -> GetXaxis() -> SetTitle ("polomer (mm)");
    Molliere_graph -> GetYaxis() -> SetTitle ("frac");
    Molliere_graph -> GetYaxis() -> SetRangeUser (0, 1.02);

    auto Molliere_fun = new TF1 ("Molliere function", "[0]/(x+[1])+[2]", 0, 50);
    Molliere_fun->SetParameters(-1, 0, 1);
    Molliere_graph->Fit(Molliere_fun);
    Molliere_graph->Draw("A*");
    Molliere_fun->SetLineWidth(1);
    Molliere_fun->Draw("same");

    double radius, radiuserror, aerror, berror, cerror, a, b, c;
    aerror = Molliere_fun->GetParError(0);
    berror = Molliere_fun->GetParError(1);
    cerror = Molliere_fun->GetParError(2);

    a = Molliere_fun ->GetParameter(0);
    b = Molliere_fun->GetParameter(1);
    c = Molliere_fun->GetParameter(2);

    radius = a/(0.9-c)-b;
    radiuserror = sqrt(aerror*aerror*(1/(0.9-c)*1/(0.9-c))+berror*berror+cerror*cerror*(a/((0.9-c)*(0.9-c)))*(a/((0.9-c)*(0.9-c))));;
    std::cout << "Moliere radius = (" << radius << " +- " << radiuserror << ")\n";

    auto line = new TLine(0, 0.9, 50.5, 0.9);
    auto line2 = new TLine(radius, 0., radius, 1.02);
    auto line3 = new TLine(25.78, 0., 25.78, 1.02);

    /*auto box1 = new TBox (radius-radiuserror, 0, radius+radiuserror, 1.02);
    box1->SetFillColorAlpha(kOrange, 0.3);
    box1->Draw("same");*/

    line2 -> SetLineColor(kOrange);
    line3 -> SetLineColor(kBlue);
    line->Draw("same");
    line2->Draw("same");
    line3->Draw("same");

    auto legend = new TLegend (0.6, 0.1, 0.9, 0.4);
    legend->AddEntry(Molliere_graph, "data", "erp");
    legend->AddEntry(Molliere_fun, "fit funkce #frac{a}{x+b}+c", "l");
    legend->AddEntry(line2, "zmerená hodnota Molierova polomeru", "l");
    legend->AddEntry(line3, "tabulkova hodnota Molierova polomeru", "l");
    legend->AddEntry((TObject*)0, TString::Format("#chi^{2}/ndf = %0.1f", (Molliere_fun->GetChisquare()/Molliere_fun->GetNDF())), "");
    legend->AddEntry((TObject*)0, TString::Format("a = (%0.2f #pm %0.2f)", Molliere_fun->GetParameter(0),Molliere_fun->GetParError(0)), "");
    legend->AddEntry((TObject*)0, TString::Format("b = (%0.2f #pm %0.2f)", Molliere_fun->GetParameter(1),Molliere_fun->GetParError(1)), "");
    legend->AddEntry((TObject*)0, TString::Format("c = (%0.4f #pm %0.4f)", Molliere_fun->GetParameter(2),Molliere_fun->GetParError(2)), "");
    legend->Draw("same");

    std::cout << "chi/ndf =" << Molliere_fun->GetChisquare() / Molliere_fun->GetNDF() << "\n";
    GraphCanvas->SaveAs("SiPbO.pdf");


    }


