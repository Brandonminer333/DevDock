FROM devdock/ds-base
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /workspace
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
