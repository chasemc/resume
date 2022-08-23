resume



Get "Client secret" from:
https://orcid.org/developer-tools

Add as "New repository secret" here:
https://github.com/chasemc/resume/settings/secrets/actions



echo '<my_token>' | docker login ghcr.io -u <my_username> --password-stdin

docker pull ghcr.io/chasemc/resume:sha256-1f739184a95c99f8e6fcf17f4d02ec437d02bb5921e07e07ced3236723849333.sig

docker run \
  -v /home/chase/Documents/github/personal/resume/:/resume \
  -e ORCID_TOKEN=fa6fa550-7961-4fbd-865c-a1a60285cdad \
  -it resume bash
  
  Rscript -e  'rmarkdown::render("resume/resume/resume.Rmd")'
          Rscript -e  'rmarkdown::render("resume/cv/cv.Rmd")'

Rscript -e  'rmarkdown::render("resume/resume.Rmd")'
          Rscript -e  'rmarkdown::render("resume/cv/cv.Rmd")'
          mv resume.pdf resume/resume.pdf
          mv cv.pdf cv/cv.pdf