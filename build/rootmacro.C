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
    Molliere_graph -> SetTitle ("Zavislost pomeru energie absorbovane ve valci a celkove absorbovane energie na polomeru valce");
    Molliere_graph -> GetXaxis() -> SetTitle ("radius (mm)");
    Molliere_graph -> GetYaxis() -> SetTitle ("frac");

    auto Molliere_fun = new TF1 ("Molliere function", "-1/(x*[0])+1", 0, 50);
    Molliere_fun->SetParameter(0, 0.5);
    //Molliere_graph->Fit(Molliere_fun);
    Molliere_graph->Draw("A*");
    Molliere_fun->Draw("same");
    }


