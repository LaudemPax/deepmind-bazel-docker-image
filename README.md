# laudempax/deepmind-bazel

A docker container created for use with the [deepmind/code_contests](https://github.com/deepmind/code_contests) repository. 

Building on Windows is not officially supported and the bazel build scripts fail, so this container was created as a workaround. 

## Example usage

Navigate to the folder where the repository is downloaded and use the following command to run the example python code (substituting the actual path of the dataset):

```console
docker run -it -v ${PWD}:/build -w /build laudempax/deepmind-bazel:ubuntu-20.04 run -c opt :print_names_and_sources <path to downloaded dataset>/dm-code_contests/code_contests_valid.riegeli
```

This will mount the current directory (as in ${PWD}) as a volume onto the /build folder in the container, change the working directory to that folder and finally run the image with the bazel run command.

## Source

Source is hosted on Github.