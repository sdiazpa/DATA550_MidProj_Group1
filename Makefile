table=TRUE
figure=TRUE

report.html: code/05_make_report.R \
	report.Rmd output/vn_table1.rds output/vn_table2.rds output/sdp_figure1.png output/sdp_figure2.png
	Rscript code/05_make_report.R $(table) $(figure)

output/vn_table1.rds: code/01_vn_make_table1.R
	Rscript code/01_vn_make_table1.R

output/vn_table2.rds: code/01_vn_make_table2.R
	Rscript code/01_vn_make_table2.R

output/sdp_figure1.png: code/03_sdp_make_figure1.R
	Rscript code/03_sdp_make_figure1.R

output/sdp_figure2.png: code/04_sdp_make_figure2.R
	Rscript code/04_sdp_make_figure2.R
