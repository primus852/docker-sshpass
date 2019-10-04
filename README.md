# docker-sshpass
Make `sshpass` command available to ci/cd pipeline

## Usage (gitlab-ci.yml to copy build to live server)
```
publish:
    image: primus852/docker-sshpass
    script:
        - npm run build --prod --output-path=public
        - sshpass -e scp -o 'StrictHostKeyChecking no' -r ../public/* <MYUSER>@<MYHOST>:/srv/apache2/htdocs/<MYPUBLICFOLDER>
```

_Note: in this example, you have to set the environment variable SSHPASS in "Settings > CI / CD > Variables"_
