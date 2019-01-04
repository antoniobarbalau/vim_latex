import sys
import os
import subprocess


section_text = open(sys.argv[1], 'r').read()
template_text = open('~/.config/nvim/bundle/vim_tonio_latex/latex_template.tex', 'r').readlines()
# template_text = open('./latex_template.tex', 'r').readlines()

output_text = ''


copy_flag = True
for line in template_text:
    if 'center' in line:
        copy_flag = False

    if copy_flag:
        if '<--**-->' in line:
            output_text += section_text
        else:
            output_text += line

    if 'vspace' in line:
        copy_flag = True

# print(output_text)

filename = os.path.dirname(sys.argv[1]) + '/Standalone_' + os.path.basename(sys.argv[1])
print(filename)

with open(filename, 'w') as f:
    f.write(output_text)
subprocess.call(['pdflatex', filename, '-output-directory', os.path.dirname(sys.argv[1])])
# subprocess.call(['zathura', filename.replace('tex', 'pdf')])


