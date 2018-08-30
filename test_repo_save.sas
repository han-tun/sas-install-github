*---------- Point to your local copy of install_github.sas. ----------;
%include "H:\GitHub\RhoInc\sas-install-github\src\install_github.sas";


*---------- Point to where repos/macros/output should be saved. ----------;
%let path = H:\temp\sascodefromgithub;


*---------- Install (and save) a full repository. ----------;
%install_github
    (repo=RhoInc/sas-codebook
    ,savePath=H:/temp/sascodefromgithub
    )

%codebook_generic
    (data=sashelp.cars
    ,pdfpath=&path
    )
