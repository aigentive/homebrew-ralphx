cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.51.1"
  sha256 arm:   "1dd755215d297dd730b021765fe1290e90ecbf6cf5a67ab36131301633ee3e3c",
         intel: "feca55476930d3dc4170c0005bfe6c92b0eb2990b41a8dd7c54a76ad93798ea3"

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
