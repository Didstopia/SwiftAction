# Set the base image to the target Swift version
FROM swift:5.0

# Add labels the Docker image
LABEL "repository"="http://github.com/Didstopia/action-swift"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Didstopia <support@didstopia.com>"

# Add labels for GitHub Actions
LABEL "com.github.actions.name"="Swift"
LABEL "com.github.actions.description"="Swift support for GitHub Actions."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="orange"

# Create the entrypoint script
RUN echo "#!/bin/sh\n\
set -e\n\
set -x\n\
sh -c \"swift \$*\""\
> /entrypoint.sh && \
chmod +x /entrypoint.sh

# Set the default entrypoint with support for arguments
ENTRYPOINT ["/entrypoint.sh"]

# Set the default command to run
CMD ["--help"]
