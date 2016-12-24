class AnyenvGit < Formula
    desc "anyenv plugin that provides `anyenv git` command to run `git` in directories of all **env and all plugins"
    homepage "https://github.com/znz/anyenv-git"
    url "https://github.com/znz/anyenv-git/archive/e091c9428c60af58cc071f2ec84a0f8276e809db.zip"
    sha256 "a8e8828e1a49eb3d47966375363877f756d6eb69a13fb99a7fd5d13cd54937b1"
    version "e091c94"
    head "https://github.com/znz/anyenv-git.git"

    depends_on "anyenv"

    def install
        prefix.install Dir["*"]
    end
end
