
# 1. 使用你指定的版本作为基础镜像
FROM wiremock/wiremock:3.5.4

# 2. 将本地的 wiremock 文件夹（包含 mappings 和 __files）复制到容器内
# 注意：WireMock 官方镜像使用非 root 用户（wiremock）运行，因此建议加上 --chown 参数保证权限正确
COPY --chown=1000:1000 ./wiremock /home/wiremock

# 3. 将你 docker-compose 里的 command 参数写进来作为默认启动参数
CMD [ "--verbose"]
