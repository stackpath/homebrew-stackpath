require "language/node"

class Edgeengine < Formula
  desc "Deploy to Stackpath EdgeEngine from your local machine"
  homepage "https://github.com/stackpath/edgeengine-cli"
  url "https://registry.npmjs.org/@stackpath/edgeengine-cli/-/edgeengine-cli-1.1.0.tgz"
  version "1.1.0"
  sha256 "1394958d389e27670a37d84f573da58fe185ed67be3106b2ee652f728fd411fb"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/edgeengine", "-h"
  end
end
