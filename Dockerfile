# Base image
FROM ruby:3.2.0-alpine

# Define a variável de ambiente para suprimir avisos do Rails
ENV RAILS_ENV=development

# Instalação das dependências do sistema
RUN apk update && \
    apk add --no-cache \
    build-base \
    nodejs \
    yarn \
    tzdata \
    alpine-sdk \
    postgresql-dev \
    imagemagick \
    git \
    gcc
# Define o diretório de trabalho do aplicativo dentro do contêiner
WORKDIR /app

# Copia o Gemfile e o Gemfile.lock para o diretório de trabalho
COPY Gemfile Gemfile.lock ./
RUN gem update --system
# Instalação das gems do aplicativo
RUN gem install bundler && bundle install --jobs 20 --retry 5



# Copia o restante do código do aplicativo para o diretório de trabalho
COPY . ./


# Instala a extensão do debuger do ruby

# Expõe a porta que será usada pelo aplicativo
EXPOSE 3000
EXPOSE 9229

# Define o comando padrão para iniciar o servidor Rails em modo de depuração
ENTRYPOINT [ "./entrypoints/rails-server-entrypoint.sh" ]

