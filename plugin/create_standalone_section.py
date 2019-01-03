import sys


section_text = open(sys.argv[1], 'r').read()
# template_text = open('~/.config/nvim/latex_template.tex', 'r').readlines()

output_text = ''


copy_flag = True
for line in template_text:
    if 'center' in line:
        copy_flag = False
    output_text += template_text
    if 'vspace' in line:
        copy_flag = True


print(template_text)


