FROM python:3.7.6
WORKDIR /code

ADD requirements.txt /code
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
RUN mkdir /notebooks
RUN mkdir -p $(jupyter --data-dir)/nbextensions
RUN git clone https://github.com/lambdalisue/jupyter-vim-binding $(jupyter --data-dir)/nbextensions/vim_binding
RUN jupyter nbextension enable vim_binding/vim_binding
CMD jupyter-lab --allow-root --extensions-in-dev-mode --no-browser --NotebookApp.token='' --NotebookApp.password='' --ip 0.0.0.0 --port 8888 /notebooks  

