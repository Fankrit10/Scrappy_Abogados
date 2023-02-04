FROM jupyter/base-notebook
RUN pip install pandas selenium bs4
EXPOSE 8888
WORKDIR /app
COPY . .
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]