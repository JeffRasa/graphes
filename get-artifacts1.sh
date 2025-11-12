curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $(cat token.gh)" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/JeffRasa/graphes/actions/artifacts \
  > gh-artifacts.json

curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $(cat token.gh)" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/JeffRasa/graphes/actions/artifacts/4329518737/zip \
  --output artifact.zip

unzip -o artifact.zip
