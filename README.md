# Merge extenstions

This project is only useful for a time being, to merge both LMEM extensions
while allowing to keep on developing each of them separately

## Install

Clone recursively the git project (get all the modules)
> git clone --recursive git@github.com:insitu-project/merge-extensions.git

## Running

Just run make with no arguments ( will update, build and merge the extensions locally )
> make

## Deployment

Right now the verion number of the merged extensions doesn't update automatically.
If you want to publish a new merged extension you'll have to manually edit it in the
manifest.json file


# Running specifics tasks manually

## Updating

Get the latest master version of the submodules
> make update

## Building

Builds both extensions:
> make build

Build old extension:
> make build-chomium-addon

Build new extension:
> make build-proto-ext

## Merging

Merges the two extensions (assuming they were build before)
> make merge

## Cleaning

Clean any previously built/merged code
> make clean
