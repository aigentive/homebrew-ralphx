cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.25.0"
  sha256 arm:   "67e1832b542137e47cd47bdf850b4bf18b5c8a0dc647457e3691f1337d3d2ed5",
         intel: "83ac48bc08866ec4e593a619106d2d30815749745233c2272c56f7c488982bf2"

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
