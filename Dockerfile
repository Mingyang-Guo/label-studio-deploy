FROM heartexlabs/label-studio:latest

# 更安全：禁止开放注册（只允许管理员创建用户）
# ENV LABEL_STUDIO_DISABLE_SIGNUP_WITHOUT_LINK=true

# Render 必须监听 $PORT
CMD ["sh", "-c", "label-studio start --host 0.0.0.0 --port ${PORT:-8080} --no-browser"]
