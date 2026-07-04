cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.56.0"
  sha256 arm:   "2f025a67d8f65e681bac895f44ac8585e8c07cf1eebac06f07e5a32a26474fff",
         intel: "983fadc8a343dbd9f12e0f28a604559a915dba4d5a2846c0ac3dea4bbbe88793"

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
