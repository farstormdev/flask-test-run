<h1>Flask Test with Containers</h1>

This project is created using Python 3, Docker Toolbox and the Flask framework(http://flask.pocoo.org/docs/1.0/).

Initial project architecture based on the guide found here: https://developer.okta.com/blog/2018/07/23/build-a-simple-crud-app-with-flask-and-python
    Note, I will update this as each piece is finalized.

Initial flask app setup based on these guides: 
    Current version: https://scotch.io/tutorials/getting-started-with-flask-a-python-microframework
    Future version: https://scotch.io/tutorials/build-a-crud-web-app-with-python-and-flask-part-one

Initial container setup used this guide, with modifications: https://medium.com/bitcraft/dockerizing-a-python-3-flask-app-line-by-line-400aef1ded3a
    Modifications: 
        * Did not install uwsgi at this time.
        * To build the image, use this command in the root directory of the proejct (/flask_test_run):
            * `docker build -t flask-test-image .`
        * After building the image, use this command: 
            * `docker run -d -p 5000:5000 flalsk-test-image`
        * Once the container is running, the next step depends on which version of Windows (and Docker) you're running.
            * If you're using Docker Toolbox on Windows 10 Home, run the command:
                * `docker-machine ip`
                * Copy the ip address that is returned, and go to 
                    * `<ipaddress>:5000`
            * If you're on Windows 10 Pro, you should be able to go to localhost:5000 and see the page