import setuptools

setuptools.setup(
    name='mac-finder',
    install_requires=open('requirements.txt').read().splitlines(),
    packages=setuptools.find_packages(),
    scripts=['scripts/.DS_Store','scripts/.finder-alias.applescript','scripts/.finder-close-bg.applescript','scripts/.finder-close-duplicates.applescript','scripts/.finder-comment.applescript','scripts/.finder-icon.applescript','scripts/.finder-reveal.applescript','scripts/.finder-selection.applescript','scripts/finder','scripts/finder-alias','scripts/finder-close-bg','scripts/finder-close-duplicates','scripts/finder-comment','scripts/finder-exec','scripts/finder-frontmost','scripts/finder-icon','scripts/finder-reveal','scripts/finder-selection']
)
