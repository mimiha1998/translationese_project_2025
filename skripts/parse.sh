#! /bin/bash

LocalDir=C:\Users\Fox0197\Desktop\translationese_project
#Inputtexte
InputEN=C:/Users/Fox0197/Desktop/translationese_project/data/en
InputES=C:/Users/Fox0197/Desktop/translationese_project/data/es
InputDE=C:/Users/Fox0197/Desktop/translationese_project/data/testset_de
#Outputordner
Output=C:/Users/Fox0197/Desktop/translationese_project/output


#EN parsen
for file in C:/Users/Fox0197/Desktop/translationese_project/data/en/* ; do python3 stanza_pipeline.py --language=en "$file" "$Output/en/$(basename "$file" .WEBRip.Netflix).conllu"; done

mv C:/Users/Fox0197/Desktop/translationese_project/data/en/*.conllu C:/Users/Fox0197/Desktop/translationese_project/output/en



#ES parsen
for file in C:/Users/Fox0197/Desktop/translationese_project/data/es/* ; do python3 stanza_pipeline.py --language=es "$file" "$Output/es/$(basename "$file" .WEBRip.Netflix).conllu"; done

mv C:/Users/Fox0197/Desktop/translationese_project/data/es/*.conllu C:/Users/Fox0197/Desktop/translationese_project/output/es

#DE parsen
#direct translations
for file in C:/Users/Fox0197/Desktop/translationese_project/data/testset_de/direct_en*.de* ; do python3 stanza_pipeline.py --language=de "$file" "$Output/testset_de/direct/$(basename "$file" .WEBRip.Netflix).conllu"; done
mv C:/Users/Fox0197/Desktop/translationese_project/data/testset_de/direct_en/*.conllu C:/Users/Fox0197/Desktop/translationese_project/output/testset_de_direct

#pivot translations
for file in C:/Users/Fox0197/Desktop/translationese_project/data/testset_de/indirect_es/*.de ; do python3 stanza_pipeline.py --language=de "$file" "$Output/testset_de/indirect/$(basename "$file" .WEBRip.Netflix).conllu"; done
mv C:/Users/Fox0197/Desktop/translationese_project/data/testset_de/indirect_es/*.conllu C:/Users/Fox0197/Desktop/translationese_project/output/testset_de_indirect