FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
COPY start_gunicorn.sh /start_gunicorn.sh
EXPOSE 8000
CMD ["/start_gunicorn.sh"]
# done!
