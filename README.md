# Resume

RESUME_DIR=/home/chase/Documents/github/personal/resume

```sh
docker run -u $(id -u):$(id -g) \
  -v $RESUME_DIR/:/resume \
  -e ORCID_TOKEN=$ORCID_TOKEN \
  -it resume bash
```

```sh
  Rscript -e  'rmarkdown::render("resume/resume.Rmd")'
  
  Rscript -e  'rmarkdown::render("cv/cv.Rmd")'

  Rscript -e  'rmarkdown::render("resume/resume.Rmd")'
          Rscript -e  'rmarkdown::render("resume/cv/cv.Rmd")'
          mv resume.pdf resume/resume.pdf
          mv cv.pdf cv/cv.pdf
```


TODO: caps in talks
