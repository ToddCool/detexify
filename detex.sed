# remove comments
 s/(?<!\\)%.*//g 
# remove environments
 s/(\\begin|\\end).*//g 
# remove label, ref and cite command
 s/\\(?:label|ref|cite){.*?}//g 
# stripe caption, chapter, section, subsection and subsubsection
 s/\\(?:caption|chapter|(?:sub)*section)\*?{(.*)}/\1/g 
# stripe inline math
 s/(?<!\\)\$(.*?)(?<!\\)\$/\1/g 
# remove includegraphics
 s/\\includegraphics\[.*?\]{.*?}//g 
# remove control sequence
 s/\\[a-zA-Z]+(?=[\[\s$])(\s|(\[.*?\])|$)//g 
# stripe from control sequence
 s/\\[a-zA-Z]+{(.*?)}(?:{(.*?)})?/\1 \2/g 
# stripe % sign
 s/\\(?=(?:\%|\{|\}\[\]|\@|\/))(.)//g 
# stripe control sequence
 s/\\[a-zA-Z]+{(.*?)}/\1/g 
# stripe verb| |
 s/\\[a-zA-Z]+\|(.*?)\|/\1/g 
# remove \\ from table
 s/\\\\(?:\[\d\w{2}\])?//g 
# remove empty []
 s/(\[\]|{}|\(\))//g 
# remove control sequence like \textbf etc.
 s/\s(?=(?:{.*?}|\[.*?\]|\(.*?\)))[{\[\(](.*?)[}\]\)](?=\s)/\1/g 
 s/\\([a-zA-Z]+)/\1/g 
# remove &
 s/\&//g
