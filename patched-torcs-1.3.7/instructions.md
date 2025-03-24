# NixOS Installation Instructions

To build and install the software on NixOS, follow these steps:

1. Set the required environment variables:

```bash
export CFLAGS="-fPIC"
export CPPFLAGS=$CFLAGS
export CXXFLAGS=$CFLAGS
```

2. Run the configuration, build, and installation commands:

```bash
./configure
sudo -E make
sudo -E make install
sudo -E make datainstall
```

Note: The `sudo` command is required to grant permission to place the final script in `/usr/local/bin`.

3. After installation, modify the `torcs` script to use the correct shell. Since NixOS does not have `/bin/bash`, use the following command to update the script:

```bash
sudo sed -i "s|/bin/bash|$(which bash)|g" /usr/local/bin/torcs
```

4. To run the TORCS server, you can either execute it directly with:

```bash
/usr/local/bin/torcs
```

Or, create an alias or symlink for easier access.
