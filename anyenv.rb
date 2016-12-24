class Anyenv < Formula
    desc "[anyenv] all in one for **env"
    homepage "https://github.com/riywo/anyenv"
    url "https://github.com/riywo/anyenv/archive/3cb8ad1b0dfd89ed5a53fcc9e076b371f6baabfc.zip"
    sha256 "5bfa5785cdfcf5f6131cd22e1e8011ec41519b00e5e1c586c8bd00e45a054df1"
    version "3cb8ad1"
    head "https://github.com/riywo/anyenv.git"

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
