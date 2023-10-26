# Resume


docker build . -t chasemc2/resume


docker pull chasemc2/resume:bd8c5216d5d0f67dc5dd2f69b942d629cfdf30ea

```sh
RESUME_DIR=/home/chase/Documents/github/personal/resume
docker run -u $(id -u):$(id -g) \
  -v $RESUME_DIR/:/resume \
  -e ORCID_TOKEN=$ORCID_TOKEN \
  -it chasemc2/resume:bd8c5216d5d0f67dc5dd2f69b942d629cfdf30ea bash
```

```sh
  Rscript -e  'rmarkdown::render("resume/resume.Rmd")'
  
  Rscript -e  'rmarkdown::render("cv/cv.Rmd")'




          mv resume.pdf resume/resume.pdf
          mv cv.pdf cv/cv.pdf
```


TODO: caps in talks
