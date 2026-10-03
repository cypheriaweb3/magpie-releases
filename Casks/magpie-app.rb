cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.786"
  sha256 arm:   "3af53bdb6675e164fa132f17b734a7e323d9cb72859cf970a447d2998de187ff",
         intel: "a7fe39a15278a0cd6abd9fe293ff55029f29a74b8e057da1e006a8997f03d5c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
