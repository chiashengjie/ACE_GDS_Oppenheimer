*** Variables ***
${BROWSERMODECHROME}    chrome
${BROWSERMODEFIREFOX}    firefox

${MAINPAGEURL}    http://localhost:8080
${MAINTITLE}    The Oppenheimer Project
${MAINTITLEXPATH}    //h1[contains(text(),'The Oppenheimer Project')]

${REFRESHTAXBUTTON}    //button[contains(text(),'Refresh Tax Relief Table')]
${TAXRELIEFTEXT}    //h1[contains(text(),'Total Tax Relieves')]

${RAKEDATABASENAME}    Rack Database Session
${RAKEAPIURL}    calculator/rakeDatabase

${RANDOMFACTORVARIABLE}    12

${GENDERMALE}    M
${GENDERFEMALE}    F

@{DEFAULT_HERO}    188-1231232    J Robert Oppenheimer    M    22041904    400000.00    5000.00

@{HEROES_ENTRY_01}    111-1111111    Alice    F    11011991    1000.00    20.00
@{HEROES_ENTRY_02}    222-2222222    Bob    M    11021992    2000.00    40.00
@{HEROES_ENTRY_03}    333-3333333    Charlie    M    11031993    3000.00    75.00
@{HEROES_ENTRY_04}    444-4444444    Delta    F    11041994    4000.00    100.00
@{HEROES_ENTRY_05}    555-5555555    Edward    M    11051995    500.00    400.00

${UPLOADFILEXPATH}    //body/div[1]/div[2]/div[1]/div[1]/div[2]/input[1]
${FILEPATHSINGLE}    ${EXECDIR}/TestFiles/Single.csv
${FILEPATHMULTIPLE}    ${EXECDIR}/TestFiles/Multiple.csv
${FILEPATHINVALID}    ${EXECDIR}/TestFiles/Invalid.csv

@{HEROAGE0}    111-1231231    J Zero Robott    M    01012021    200.00    50.00
@{HEROAGENEG}    222-1231231    J Neg Robott    F    01012023    200.00    50.00


@{HEROAGE18}    188-1231232    J Robert    M    22042003    500.00    50.00
@{HEROAGE35}    358-1231232    J Robert II    M    22041986    1000.00    100.00
@{HEROAGE50}    508-1231232    J Robert III    M    22041971    2000.00    200.00
@{HEROAGE75}    758-1231232    J Robert IV    M    22041946    5000.00    500.00
@{HEROAGE76}    778-1231232    M Roberta V    M    22041944    100.00    70.00

${NATIDFIRSTENTRYXPATH}    //tbody/tr/td[1]
${TAXRELIEFFIRSTENTRYXPATH}    //tbody/tr/td[2]
${CHECKTOTALRELIEFXPATH}    //body/div[1]/div[2]/div[1]/div[3]/div[1]


${DISPENSENOWBUTTON}    //a[contains(text(),'Dispense Now')]
${CASHDISPENSEDTEXT}    //div[contains(text(),'Cash dispensed')]
${BACKGROUNDCOLORATTRIBUTE}    rgba(220, 53, 69, 1)


