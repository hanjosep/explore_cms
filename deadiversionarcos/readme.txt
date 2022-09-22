[README.TXT File - OCTOBER 2010]

            ARCOS NDC DICTIONARY FILE/RECORD LAYOUT

FIELD NAME              LENGTH               STARTING  ENDING            
                                              COLUMN   COLUMN
NDC                       11                    1        11
Ingredient Key            1                     12       12
E77-Flag (DEA Use Only)   1                     13       13
No. Ingredients           1                     14       14
CSA Schedule              2                     15       16
UN Schedule               1                     17       17
Psychotropic Sched        1                     18       18
Trade/Product Name        36                    19       54
Package Quantity          9  (999999V999)       55       63 
Package Measure           5                     64       68
Drug Code                 8                     69       76
Salt Code                 4                     77       80
Ingredient Name           51                    81       131
Ingredient Base Weight    13 (999999V9999999)   132      144


                        Field Name Descriptions

1. NATIONAL DRUG CODE (NDC)
For ARCOS reporting purposes each drug product containing a controlled
drug substance is identified as a unique 11-digit, three segment number. This
number (i.e., acronym NDC) identifies the labeler/vendor, product and trade
package size.  The first segment, i.e., the LABELOR CODE, is assigned by the
Food and Drug Administration (FDA).  A labeler is any firm that manufacturers,
distributes or repacks/relabels a drug product. The second segment, the
PRODUCT CODE, identifies the name of the product, it's active ingredients, name
of its manufacturer or private label distributor, strength, dosage form and
formulation (i.e.,size, shape, color or code imprint (if any), and any other
characteristic that identifies the product as unique. The third segment, the
PACKAGE CODE, identifies package sizes (i.e., 12's, 24's, 100's for tablets,
capsules, ampules and 30ml, 100ml, 8 fluid ounces, pint, gallon for liquid
formulations) and package types (i.e., box, bottle, vial, etc.).

        EXAMPLE: ARCOS NATIONAL DRUG CODE CONFIGURATION

LLLLL -- The first five digits represent the FDA assigned LABELER for a
         manufacturer, distributor or repacker/relabeler.
       
 PPPP -- The next four positions represent the PRODUCT CODE . The PRODUCE CODE   
         designation is developed by the specific labeler (i.e.manufacturer,     
         distributor, repacker/relabeler).

   KK -- The final two positions, also developed by the specific labeler,
         identifies the PACKAGE CODE. For ARCOS reporting, two general types of
         package code designations are identified as follows:

      1. Any two-digit alphanumeric combination identifies a NDC product of a
         designated package size and type (i.e., bottle of 100 tablets/capsules
         or a pint bottle).

      2. All other NDC products containing two asterisks (i.e., **) in the
         package drug code represent products that are:(a) bulk, raw,
         non-formulated controlled substances (i.e., usually bulk powders) or
         (b) bulk formulated products identified as a per unit value
         (i.e., 10mg codeine phosphate per tablet/capsule or 1mg hydrocodone
         bitartrate/ml)
    
See file layout example of NDC# 585210032** below (i.e., positions 1-11).

    FILE  
  POSITIONS
1        11    
     
585210032**
585210032**     
585210032**     
585210032**     

2. INGREDIENT KEY
The Ingredient Key represents a number that identifies  a unique controlled
substance within a designated NDC number. In some instances, a unique
NDC number may contain two or more controlled substances. As an
example, the drug product, NDC#585210032**, trade name "ADDERALL",
contains four unique controlled substances and is listed in the ARCOS NDC
File as follows. NOTE: File Position 12 represents location of the Ingredient
Key Number. See example below: 

    FILE  
  POSITIONS
1        11   12  
     
585210032**    1         
585210032**    2
585210032**    3
585210032**    4                     
                                
3. E77-Flag (DEA Use Only)
The E77-Flag located in position 13 of the  NDC file layout identifies the
controlled substance as a psychotropic substance in Schedules III and IV,i.e., 
CFR 1304.33(d)(i)(ii). Correlation of this information with types of
manufacturing transactions aids in the determination of acceptance/ rejection
of an ARCOS manufacturing transaction. In the example shown below, the
NDC file layout does not contain any character in position 13. This indicates
that the controlled substances identified in the NDC product are not listed in
Schedules III & IV as cited in 21 CFR 1304.33(d)(i)(ii).  
                   
    FILE  
  POSITIONS
1        11   12   13   
     
585210032**    1                  
585210032**    2     
585210032**    3     
585210032**    4     

4. NO. of INGREDIENTS
The No. of Ingredients field of information located in position 14 of the
ARCOS file layout identifies the total number of controlled substances
contained in a unique NDC number. As an example, the drug product
"ADDERALL"; NDC#585210032** contains four controlled substances,
i.e., d-amphetamine saccharate, dl-amphetamine aspartate, d-amphetamine
sulfate dibasic and dl-amphetamine sulfate dibasic. See example below:

    FILE  
  POSITIONS
1        11    12   13  14 
     
585210032**     1        4     
585210032**     2     
585210032**     3     
585210032**     4 

5. CSA SCHEDULE
The Controlled Substance Act (CSA) Schedule number located in positions
15-16 of the ARCOS file layout identifies the particular CSA Schedule that
has been assigned to the drug product containing a controlled
substance/substances. Current CSA Schedules for various controlled
substances are cited in 21 CFR Part 1308. NOTE: The requirements for
ARCOS reportable controlled substances are cited in 21 CFR
1304.33(a)(b)(c)(d)(e)(f). In the example below, the designation of  "2N" in
positions 15-16 indicates that the controlled substance is a CSA Schedule 2
(i.e., Position 15) and a non-narcotic(i.e., Position 16). NOTE: A blank space
in Position 16 indicates that the controlled substance is a narcotic substance.

    FILE  
  POSITIONS
1        11   12   13  14  15-16 
     
585210032**    1    4   4   2N     
585210032**    2    4
585210032**    3    4
585210032**    4    4

6. UN SCHEDULE NUMBER
The UN Schedule number located in position 17 of the ARCOS NDC file
layout identifies the controlled substance as a narcotic substance which is
controlled , scheduled and listed under the terms of the Single Convention on
Narcotic Drugs, 1961 as amended by the Protocol of 25 March 1972. A list
of narcotic drugs under international control is periodically updated by the
International Narcotics Control Board (INCB), Vienna International Centre,
P.O. Box 500, A-1400, Vienna, Austria. The INCB lists narcotics in
Schedules I, II, III or IV. In the example below, position 17 is a blank space
indicating that the controlled substance is not a narcotic substance as
identified by the INCB. 

    FILE  
  POSITIONS
1        11   12   13  14  15-16  17 
     
585210032**    1     4  4   2N     
585210032**    2     4
585210032**    3     4
585210032**    4     4

7. PSYCHOTROPIC SCHEDULE NUMBER
The Psychotropic Schedule number located in position 18 of the ARCOS
NDC file layout identifies the CSA controlled substance as a psychotropic
controlled substance which is controlled, scheduled and listed under the
terms of the Convention on Psychotropic Substances 1971. A list of
psychotropic drugs under international control is periodically updated by the
International Narcotics Control Board (INCB), Vienna International Centre,
P.O. Box 500, A-1400 Vienna, Austria. The INCB lists Psychotropic
Substances in  Schedules I, II, III or IV.  In the example below, position 18 
is filled with the number "2" for each of the four CSA controlled substances
cited for NDC#585210032**, indicating that each of the controlled substances are
identified and listed as psychotropic substances under international control in
Schedule II of the Convention on Psychotropic Substances 1971.

    FILE  
  POSITIONS
1        11   12   13  14  15-16  17  18
     
585210032**    1    4   4   2N         2
585210032**    2    4                  2
585210032**    3    4                  2
585210032**    4    4                  2

8.TRADE/PRODUCT NAME
The drug or product name located in positions 19-54 of the ARCOS NDC file
layout attempts to list the trade or product drug name assigned by the
manufacturer or labeler. In the example below, there is one trade name
product (i.e., ADDERALL) that contains each of  four CSA controlled
substances. All trade names in the ARCOS NDC dictionary have been limited
to 36 characters. Consequently, minor editorial changes have been made (i.e.,
abbreviations) for trade name products exceeding a length of 36 characters.
In the example cited below, by convention, the trade name is listed, only
once, next to the first ingredient. 

    FILE  
  POSITIONS
1        11   12  13  14  15-16  17  18  19----------------54
     
585210032**    1   4   4   2N         2   ADDERALL  10MG  TAB
585210032**    2   4                  2
585210032**    3   4                  2
585210032**    4   4                  2

9.PACKAGE QUANTITY
The Package Quantity numbers located in positions 55-63 of the ARCOS
NDC file layout, with an implied decimal point after character 60,
represent the number of units contained in the package size of the NDC
product. In the example cited below, a package unit of one (i.e., 1) is
represented as 000001000.

     FILE  
  POSITIONS
1        11  12---54  55-----63
     
585210032**   REFER   000001000
585210032**    TO
585210032**    2-8         
585210032**    ABOVE         

10. PACKAGE MEASURE
The package measure field of input located in positions 64-68 of the ARCOS
NDC file layout identifies the unit of dosage form used to describe the trade
package (i.e., ml, fl oz, mg, gm, kg, tablet, capsule, vial, ampule, etc.).In
the example cited below, the package measure for the product "ADDERALL" is
a tablet.

    FILE  
  POSITIONS
1        11  12---54 55-----63  64-68
     
585210032**   REFER  000001000  TAB
585210032**    TO
585210032**    2-8         
585210032**   ABOVE 

11. DRUG CODE
The Drug Code field of input located in positions 69-76 of the ARCOS NDC
file layout represents an eight-character DEA drug code numbering system
for identifying all controlled substances.  The first four characters of the 
drug code corresponds to that portion of the controlled substance molecule
identified as the "base" drug.  These four characters represent the DEA drug
code assigned to each of the various controlled drug substances listed in 21 CFR
Section 1308.  Note, however, that 21 CFR Section 1308 is not a complete listing
of all possible drug codes contained in the dictionary.  Based upon the chemical
configuration of the controlled substance, the fifth character is represented by
either a period symbol "." or one of the following three characters: "B,D,L."
The purpose of the fifth character is to aid (1)in the identification of the
controlled substance as a base drug, salt of a base drug or derivative of a base
drug and, where appropriate, (2)in terms of its optical activity (i.e., B=dl,
racemic mixture;D=d, dextrorotatory; L=l, levorotatory).  The last three
characters, referred to as the "extension", identifies the controlled sub-
stance as a base drug, a particular salt of the base drug or a derivative
of a base drug.  All extensions designated as ".000" identify the controlled
substance as the base drug.Examples of other extensions are: 005=hydro-
chloride; 009=sodium salt; 050=aspartate; 163=fumarate.  In the example below,
four unique eight-character drug codes are listed for each controlled sub-
stance contained within the drug product "ADDERALL."

  FILE  
POSITIONS
1        11   12---54  55-----63 64-68  69----76
     
585210032**    REFER   000001000  TAB   1100D330
585210032**     TO                      1100B050
585210032**    2-8                      1100D010
585210032**    ABOVE                    1100D010 

12. SALT CODE
The Salt Code field of input located in positions 77-80 of the ARCOS NDC
file layout represent a four-digit drug code that uniquely identifies the
controlled substance as it exists in the NDC product. In the example below,
four unique four-digit drug codes are cited for each of the controlled
substances contained in the drug product "ADDERALL."

  FILE  
POSITIONS
1        11   12--54  55-----63  64--68  69----76  77-80
     
585210032**    REFER  000001000  TAB     1100D330  1109
585210032**     TO                       1100B050  1113
585210032**    2-8                       1100D010  1200
585210032**    ABOVE                     1100D010  1212

13. INGREDIENT NAME
The Ingredient Name field of input located in positions 81-131 of the ARCOS
NDC file layout cites the chemical name of the controlled substance
contained in the NDC product.  It should be noted that each controlled
substance has a unique eight digit drug code and a four-digit drug
code assigned to it.  In the example below, the four chemical ingrdient
names for each of the controlled substance contained in the drug product
"ADDERALL" is listed.

    FILE  
  POSITIONS
1        11  12---80   81-------------------------131   
     
585210032**   REFER   d-Amphetamine Saccharate
585210032**    TO     dl-Amphetamine Aspartate
585210032**   2-12    d-Amphetamine Sulfate Dibasic
585210032**   ABOVE   dl-Amphetamine Sulfate Dibasic                            

14. INGREDIENT BASE WEIGHT
The thirteen character Ingredient Base Weight field of input located in
positions 132-144 of the ARCOS NDC file layout, with an implied decimal
point after character six, represents the total weight (calculated in grams of
base drug), of the controlled substance contained in the NDC product.
In the example below, the ingredient weights for each of the four
controlled substance contained in the drug product "ADDERALL",
calculated in terms of grams of base drug, are listed.

    FILE  
  POSITIONS
1        11  12---80  81-----------------------131  132--------144  
     
585210032**   REFER   d-Amphetamine Saccharate       0000000009787
585210032**    TO     dl-Amphetamine Aspartate       0000000125978
585210032**   2-12    d-Amphetamine Sulfate Dibasic  0000000018345
585210032**   ABOVE   dl-Amphetamine Sulfate Dibasic 0000000018345     
                     


                        
