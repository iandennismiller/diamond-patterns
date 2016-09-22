class DiamondPatterns < Formula
  desc "Diamond Patterns for creating projects"
  homepage "https://github.com/iandennismiller/diamond-patterns"
  url "https://github.com/iandennismiller/diamond-patterns/archive/0.2.0.tar.gz"
  sha256 "5830388ac6b2b6b74fa3818ecc68e3a765418f4e22126cd17abdb709b0041ba9"

  bottle :unneeded

  def install
    bin.install "bin/brew-pip"
    bin.install "bin/diamond"
    bin.install "bin/diamond-conf-init"
    bin.install "bin/diamond-upgrade"
    bin.install "bin/project-git-init.sh"
    bin.install "bin/project-list"
    bin.install "bin/project-new"
    bin.install "bin/project-new3"
    bin.install "bin/project-open.sh"
    bin.install "bin/project-workon"
  end
end
