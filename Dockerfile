FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt-get install -y vim less

RUN mkdir -p /root/src
COPY requirements.txt /root/src
WORKDIR /root/src

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN python -m pip install jupyterlab


RUN pip install -r requirements.txt

# RUN pip install 'numpy>=1.17.4'
# RUN pip install scipy
# RUN pip install 'scikit-learn >= 0.22.0'
# RUN pip install 'matplotlib >= 3.1.0'
# # 
# RUN pip install 'pandas>=0.25.3'