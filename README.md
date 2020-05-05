# Description
Scripts to filter and keep/exclude some lines containing specific keywords from files
- **keep_lines_with_specific_keyworks.sh**: filter and keep certain words defined in keywords_to_keep.txt
- **exclude_lines_with_specific_keyworks.sh**: filter and exclude certain words defined in keywords_to_exclude.txt

Input files: the files to be filtered must be placed under the ./input folder
Output files: the new files will be in the ./output folder

# Usage
## Filer and keep some lines
- Place your files under **./input** directory
- List your keywords in the file **keywords_to_keep.txt**. One keyword by line
- Run the **script keep_lines_with_specific_keyworks.sh**
- Output files will be under **./output** directory. Output file will be suffixed by -kept

## Filer and exclude some lines
- Place your files under **./input** directory
- List your keywords in the file **keywords_to_exclude.txt**. One keyword by line
- Run the script **exclude_lines_with_specific_keyworks.sh**
- Output files will be under **./output** directory. Output file will be suffixed by -excluded