void rootmacro(){
    const int nf = 1;
    std::unique_ptr<TFile> myFile (TFile::Open("Moll_out.root", "RECREATE"));
    TString fnames[nf] = {"Molliere.root"};
    TFile* readfiles[nf];
    TH1D* CyllinderAbs_hists[nf];
    TH1D* BoxAbs_hists[nf];
    TString dopt = "";
    gStyle->SetOptStat(0);

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
	CyllinderAbs_hists[i]->SetTitle("Energie deponovaná v olověném válci o poloměru 16.02 mm");
        //TString titlefce = "gauss";
        //TString titlefce2 = "DAS fce";
        //TString fce = "[2]*exp(-(1/2)*((x-[0])/[1])*((x-[0])/[1]))";
        //TString fce2 = "[2]*exp([3]*[3]/2+[3]*((x-[0])/[1]))";
        //auto fitfce = new TF1 (titlefce, fce, 750, 1000);
        //fitfce->SetParameters(873, 26, 350);
        //auto fitfce2 = new TF1 (titlefce2, fce2, 750, 1000);
        //CyllinderAbs_hists[i]->Fit(fitfce);
        //CyllinderAbs_hists[i]->Fit(fitfce2);

        //chi2[i] = fitfce->GetChisquare();
        //ndf[i] = fitfce->GetNDF();
        //chi2_ndf[i] = chi2[i]/ndf[i];

        CylAbs[i] = CyllinderAbs_hists[i] -> GetMean();
        CylError[i] = CyllinderAbs_hists[i]->GetMeanError();

        CyllinderAbs_hists[i]->GetXaxis()->SetTitle("Energie [MeV]");
        CyllinderAbs_hists[i]->GetYaxis()->SetTitle("Cetnost");

        CyllinderAbs_hists[i]->Draw ("hist" + dopt);
        //fitfce->Draw("same");
        //fitfce2->Draw("same");
        dopt = "same";


        //std::cout << "chi2/ndf = " << chi2[i] << "/" << ndf[i] << "=" << chi2_ndf[i] << "\n" ;
        std::cout << "histogram mean energy is (" << CylAbs[i] << "+-" << CylError[i] << ") \n";
    }


    }


