# FOR BACK-END DEPLOYMENT... (FLASK)
FROM python:3.13.4-slim
COPY . .
COPY requirements.txt ./
RUN pip install -r ./requirements.txt
# Pretty much pass everything in the root folder except for the client folder, as we do NOT want to overwrite the pre-generated client folder that is already in the ./app folder
EXPOSE 5000
CMD ["python", "app.py"]