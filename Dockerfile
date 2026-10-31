FROM heartexlabs/label-studio:latest

# Restrict public signup
ENV LABEL_STUDIO_DISABLE_SIGNUP_WITHOUT_LINK=true

# Render service
CMD ["sh", "-c", "label-studio start --host 0.0.0.0 --port ${PORT:-8080} --no-browser"]
