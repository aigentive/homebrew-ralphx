cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.20.0"
  sha256 arm:   "3fb4a99cd4c293cf10a4e29b461232cb3f9fb541ab8d8bcaa13879a81750a319",
         intel: "ab6f1205d91126ee2de4469ddba5af3e61cbbb3e76121ac1f200769a68b00b64"

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
