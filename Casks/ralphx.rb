cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.36.0"
  sha256 arm:   "f744a03545fac32a2aedb3a84b7f4e8e64f7fbfa1ecb6d90e53bace4ed2a27e4",
         intel: "2ba96f76e24371087427cfe182f9b4120efe7e14a337414c1b7569f141f26b8f"

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
