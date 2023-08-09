# Rosa Parisi, Martin K Rutter, Mark Lunt, Helen S Young, Deborah P M Symmons, Christopher E M Griffiths, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"410.4","system":"icd9"},{"code":"410.41","system":"icd9"},{"code":"410.42","system":"icd9"},{"code":"I21.1  ","system":"icd10"},{"code":"I22.1","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-psoriasis-association-study-with-cvd-inferior---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-psoriasis-association-study-with-cvd-inferior---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-psoriasis-association-study-with-cvd-inferior---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
