class Anyenv < Formula
    desc "[anyenv] all in one for **env"
    homepage "https://github.com/riywo/anyenv"
    head "https://github.com/riywo/anyenv.git"
    version "3cb8ad1"

    def install
        inreplace "libexec/anyenv", %(ANYENV_ROOT="${HOME}/.anyenv"), %(ANYENV_ROOT="#{prefix}")
        prefix.install Dir["*"]
    end

    def caveats; <<-EOS.undent
      To enable anyenv, add below code to your ~/.*shrc:
        eval "$(anyenv init -)"
        EOS
    end

    test do
        shell_output(%(eval "$(#{bin}/anyenv init -)" && anyenv version))
    end
end
