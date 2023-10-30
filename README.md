# test-ghcr-push
Testing push of alpine images to GHCR

# Step 1
created Dockerfile based on Alpine

# Step 2 
tested Dockerfile locally with cli-action.sh which launches idle container

# Step 3
Creation of .ghitbub/docker-image.yml workflow.  This was based on the suggested Action as prompted by Gihub.
note: "When you enable GitHub Actions, GitHub installs a GitHub App on your repository. The GITHUB_TOKEN secret is a GitHub App installation access token. "
https://docs.github.com/en/actions/security-guides/automatic-token-authentication#using-the-github_token-in-a-workflow

# Step 4 (To Do)
This should be able to push to ghcr.io
