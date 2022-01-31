# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.23.0/trivy_0.23.0_macOS-64bit.tar.gz"
      sha256 "a156f1481373475952e82ccc59387b9c8f00129447772bdef8d573d40d1028dc"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.23.0/trivy_0.23.0_macOS-ARM64.tar.gz"
      sha256 "4d9cdbc3ceb9ba116bd43b1bf138414a26bc5256d9e7b4a7163e011e7055460f"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.23.0/trivy_0.23.0_Linux-64bit.tar.gz"
      sha256 "49c5ed93c140faf47513388130437e8da46fc140f2461c2dd885fdd2b7739752"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.23.0/trivy_0.23.0_Linux-ARM64.tar.gz"
      sha256 "587b20bd048d6cf2d0fe76a317b179a81f4af0389d75758de9148290612dd163"

      def install
        bin.install "trivy"
      end
    end
  end

  test do
    system "#{bin}/trivy", "--version"
  end
end
