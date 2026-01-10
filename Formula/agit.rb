# frozen_string_literal: true

# Homebrew formula for AGIT
#
# Usage:
#   brew tap agit-stuff/agit
#   brew install agit

class Agit < Formula
  desc "AI-native Git wrapper for capturing context alongside code"
  homepage "https://github.com/agit-stuff/agit"
  version "1.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-macos-x86_64.tar.gz"
      sha256 "5510fd89a9a0e250beed83a7d4a12726a3e30f898d67a7da9cc0c844f5528e5b"
    end

    on_arm do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-macos-aarch64.tar.gz"
      sha256 "9efd4af0177f67541278163e08301ec026d4bab801faab9f2a27f06f011d2297"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-linux-x86_64.tar.gz"
      sha256 ""
    end

    on_arm do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-linux-aarch64.tar.gz"
      sha256 "92b23716bdbfccf2647f604d99fc759a267ddb7f76f611c202f2d93548081ca1"
    end
  end

  def install
    bin.install "agit"
  end

  test do
    assert_match "agit #{version}", shell_output("#{bin}/agit --version")
  end
end
