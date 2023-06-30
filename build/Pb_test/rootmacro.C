void rootmacro(){
    const int nf = 1;
    std::unique_ptr<TFile> myFile (TFile::Open("Moll_out.root", "RECREATE"));
    TString fnames[nf] = {"Molliere.root"};
    TFile* readfiles[nf];
    TH1D* CyllinderAbs_hists[nf];
    TH1D* BoxAbs_hists[nf];
    TString dopt = "";

    double TotalAbs[nf], TotalError[nf], CylAbs[nf], BoxAbs[nf], CylError[nf], BoxError [nf], frac[nf], fracerror[nf], chi2[nf], ndf[nf], chi2_ndf[nf];


    TCanvas* Canvas = new TCanvas("Histogram", "Histogram", 1200, 800);

    for (int i = 0; i < nf; i++){
        readfiles[i] = new TFile(fnames[i]);
        if (!readfiles[i] || readfiles[i]->IsZombie()){
            std::cerr<<"error opening file"<<endl; //error control
            return;
        }
        Canvas -> cd();
        CyllinderAbs_hists[i] = (TH1D*) readfiles [i] -> Get("Eabs");
        CyllinderAbs_hists[i]->GetXaxis()->SetRangeUser(600, 1000);

        TString titlefce = "gauss";
        TString fce = "gaus";
        auto fitfce = new TF1 (titlefce, fce, 750, 1000);
        CyllinderAbs_hists[i]->Fit(fitfce);

        chi2[i] = fitfce->GetChisquare();
        ndf[i] = fitfce->GetNDF();
        chi2_ndf[i] = chi2[i]/ndf[i];

        CylAbs[i] = CyllinderAbs_hists[i] -> GetMean();
        CylError[i] = CyllinderAbs_hists[i]->GetMeanError();

        CyllinderAbs_hists[i]->Draw ("hist" + dopt);
        fitfce->Draw("same");
        dopt = "same";
        std::cout << "chi2/ndf = " << chi2[i] << "/" << ndf[i] << "=" << chi2_ndf[i] << "\n" ;
        std::cout << "histogram mean energy is (" << CylAbs[i] << "+-" << CylError[i] << ") \n";
    }


    }


