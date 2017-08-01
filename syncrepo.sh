#/bin/bash
            echo -e '\e[32mStarting sync without using sync.sh\e[0m'
            sleep 1
			repo sync -c -f -j8 --force-sync --no-clone-bundle --no-tags
