# mac-dotfiles

## Setup Mac
Download `install.sh`  and execute it:
```bash
bash install.sh
```

## SSH and Git Configuration

1. Generate SSH keys (**with a passphrase**) with the command below. `-a 100` makes the `ed25519` algorithm more resistant to brute force attacks and `-C` is just an identifier for the keys and can be anything you want:

```bash
ssh-keygen -t ed25519 -a 100 -C "mac"
```

2. Create a directory named `.ssh` in your home directory (if not already there) and copy the generated private and public keys over to it:
```bash
mkdir -p $HOME/.ssh
cp yourkey $HOME/.ssh
cp yourkey.pub $HOME/.ssh
```

3. Add your **public key** to GitHub as `authentication` and `signing` keys here: [https://github.com/settings/keys](https://github.com/settings/keys).

4. Create a file named `config` in the `.ssh` directory (if not already there):
```bash
touch $HOME/.ssh/config
```

5. Add the following entry to `config` (where `Identity File` is the path to your **private key**):

```bash
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/yourkey
```

5. Execute the following commands to configure Git (where `user.signingkey` is the path to your **public key**):

```bash
git config --global user.name "yourgithubusername"
git config --global user.email yourgithubemail
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/yourkey.pub
git config --global commit.gpgsign true
git config --global init.defaultBranch main
```

> [!TIP]
> You will now be able to share your public key with anyone via a unique link. For example, you can view my public keys here: [https://github.com/rajdeepsh.keys](https://github.com/rajdeepsh.keys). Simply replace my username with yours for your unique link. This also means that, to add your public keys to a remote server for ssh access, you can simply execute the following command in the server: `wget -qO- https://github.com/yourgithubusername.keys >> ~/.ssh/authorized_keys`.

## Advanced SSH configuration (for MacOS)

You can configure your SSH config to automatically store the passphrase and use the stored passphrase using `UseKeychain` and `AddKeysToAgent` as shown below. When typing in your SSH passpharase for the first time with the config below, it will be saved to your iCloud keychain.

```zsh
Host *
  UseKeychain yes
  AddKeysToAgent yes

Host github.com
  IdentityFile ~/.ssh/yourkey

Host server
  HostName address
  User username 
  IdentityFile ~/.ssh/yourkey
```

## Remote GPU server configuration (for Ubuntu)

1. Add your **public key** for SSH access:

```bash
wget -qO- https://github.com/yourgithubusername.keys >> ~/.ssh/authorized_keys
```

2. Configure `tmux` to start automatically and enable scrolling (optional):

```bash
echo "tmux new-session -A" >> ~/.bashrc
mkdir -p ~/.config/tmux && echo "set -g mouse on" >> ~/.config/tmux/tmux.conf
```

3. Install uv python package manager (optional):

```bash
cd ~ && curl -LsSf https://astral.sh/uv/install.sh | sh
```