# !/bin/bash
# 同步 LaTeX PDF 到网站 notes目录

SRC="$HOME/LaTeX/"
DST="$HOME/website/simonxyu.github.io/assets/pdf/notes/"

echo "同步 PDF 文件 ..."
rsync -av --delete --prune-empty-dirs --include="*/" --include="*.pdf" --exclude="*" "$SRC" "$DST"

echo "同步完成！"