cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.31.1"
  sha256 arm:   "835aa727ffc2740adfdb9fd2b4c36c0885b2a3453cc0edae94b8efa44b6d52d8",
         intel: "26b0e824f8bf4b1585fdc998555a5710aeb47b24ad0db272ceedbd7e3c9f1c3b"

  url "https://github.com/aigentive/ralphx.app/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx.app"
  auto_updates true

  depends_on formula: "node"
  depends_on macos: ">= :ventura"

  app "RalphX.app"

  caveats do
    <<~EOS
      Install at least one supported AI harness CLI after install.
      RalphX can update itself in-app after install.
      To force a Homebrew-managed refresh, run: brew upgrade --cask ralphx
    EOS
  end
end
