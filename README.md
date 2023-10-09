# Radarr Docker

A docker image of Radarr.

<strong>Project Homepage: </strong> <a href="https://radarr.video/">https://radarr.video/</a><br /> 
<strong>Project Source:</strong> <a href="https://github.com/Radarr/Radarr">https://github.com/Radarr/Radarr</a>

## Description

Although this image can be used on it's own, it's designed specifically to be used in the LabHug Helm charts.

## Getting Started

```
docker run -dt \
    --name=radarr \
    --restart=always \
    -p 7878:7878 \
    ghcr.io/labhug/radarr:latest
```

## Roadmap

The goals for this repository are fairly simple.  Create a lightweight image that can be used as a standalone container, and work within the Helm chart as well.

## Help

If you run into any issues please don't hesitate to create an issue.  Additionally feel free to reach out to @danhenrydev on Twitter or
Github.

## Authors

Contributors names and contact info

<strong>Daniel Henry</strong><br />
[@danhenrydev](https://twitter.com/danhenrydev) on Twitter<br />
[@danhenrydev](https://github.com/danhenrydev) on Github

## Version History

* 0.1
    * Initial Release

## License

This project is licensed under the GPLv3 License - see the LICENSE.md file for details
