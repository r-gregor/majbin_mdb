#! /usr/bin/env bash
# flename: gt-check-reports
# descpt: Check git reports
# last change: 20250829

echo "[INFO] checking reports for git staus commands ..."
cat $GT_STATUS_REPORTS
cat $TESTING_STATUS_REPORTS
echo "---"
echo "[INFO] checking reports for git test push commands ..."
cat $GT_TPUSH_REPORTS
cat $TESTING_TPUSH_REPORTS
echo "---"
