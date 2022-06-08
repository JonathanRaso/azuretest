FROM python:3.9

# Create a working directory as shown.
WORKDIR /app

# Copy all the requirements into the new directory created.
COPY requirements.txt ./requirements.txt

# Install all that is in the requirments.txt file.
RUN pip install -r requirements.txt
RUN cp config.toml /app

EXPOSE 8501

COPY . /app

ENTRYPOINT ["streamlit", "run"]

CMD ["app.py"]