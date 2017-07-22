# SONGWALLET
## README

This is the Rails API back-end for [song-wallet-client](https://github.com/mdo5004/song-wallet-client)

## Setup

Navigate to your favorite development directory and run `git clone https://github.com/mdo5004/song-wallet` to clone this repo. 
Then run `cd song-wallet` to open the directory and run `git clone https://github.com/mdo5004/song-wallet-client song-wallet-react` to download the React front-end repo. 
Finally, run `bundle install && cd song-wallet-react && npm install && cd ..` to install both front-end and back-end dependencies.

## Start-up
To run both the front-end and back-end, run `rake local`. To run just the Rails back-end, run `rake start`. If you clone the React front-end into a folder of a different name (e.g. `client` instead of `song-wallet-react`) you will need to edit `Procfile.dev` by replacing `cd song-wallet-react` with `cd <directory_name>`.
