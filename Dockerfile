# Set the base image to the target Swift version
FROM swift:5.0

# Add labels the Docker image
LABEL "repository"="https://github.com/Didstopia/SwiftAction"
LABEL "homepage"="https://swift.org"
LABEL "maintainer"="Didstopia <support@didstopia.com>"

# Add labels for GitHub Actions
LABEL "com.github.actions.name"="Swift Action"
LABEL "com.github.actions.description"="Provides Swift support for GitHub Actions."
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
