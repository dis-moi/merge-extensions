# Merge extenstions

This project is only useful for a time being, to merge both LMEM extensions
while allowing to keep on developing each of them separately

## Running

Just run make with no arguments ( will update, build and merge the extensions locally )
> make

# Running specifics tasks manually

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
