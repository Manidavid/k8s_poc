FROM python:3.6.6-alpine
WORKDIR /app
COPY sa /app
RUN pip3 install -r requirements.txt && \
    python3 -m textblob.download_corpora && \
    pip install -U flask-cors
EXPOSE 5000
CMD ["python", "sentiment_analysis.py"]
