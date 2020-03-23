# Machine Learning Evolves (MLE)

An extendable DSL for Machine Learning.

## Starting Instructions

#### Necessary for Using MLE:

To run MLE on your system do following steps:

* Install Jetbrain MPS (currently used version: [2017.3](https://www.jetbrains.com/mps/download/previous.html))
* Download Frameworks (use linked versions, login as guest)
    * [KernelF](https://build.mbeddr.com/viewLog.html?buildId=88494&tab=artifacts&buildTypeId=Iets3_BuildOrgIets3core)
    * [Mbeddr](https://build.mbeddr.com/viewLog.html?buildId=83353&tab=artifacts&buildTypeId=Mbeddr2_Mbeddr_Gradle_platform)

- Set Path Variables for Frameworks 
    - Open MPS Settings (Strg + Alt + S) and go to `Appearance & Behavior > Path Variables`
    - Add `iets3.github.opensource.home` as name with path to KernelF framework as value
    - Add `mbeddr.github.core.home` as name with path to mbeddr framework as value

Note: Path Variables are used to make the project easier sharable - libraries can be stored in different places on different machines. The import of libraries is managed due to "Project Libraries" in the settings menu (see recommendations below).

- Install SciKit Learn (using Anaconda is recommanded)
- Install Scikitplot (e.g. using pip: `pip install scikit-plot`)

#### Using Frameworks in Other Projects
Setting the path variables for the frameworks in MPS won't automatically make them available in every project. The libraries must be added manually to the project. This is done in the settings menu (there is no specific "project settings" window).

To add the frameworks or other libraries to your project do following steps:

- Open MPS Settings (Strg + Alt + S) and go to `Build, Execution, Deployment > Project Libraries` 
- Add entry, chose any name, and chose the library directory

#### For DSL development: Open MPS with Opened Console
The console shows exceptions that are sometime not noticed by the MPS GUI. Some exceptions rely on the frameworks used in the project - they cannot be handled but apparently don't affect the DSL. Other exceptions reveal e.g. missing but required concept behavior in inherited concepts which is not detected by MPS as long as no behavior aspect is created for the concept. It is recommended to watch the console during DSL testing.  

To keep the console open when starting MPS do following steps once:
  - Go to MPS `%install_dir%/bin` and open `mps.bat` with text editor
  - Search for all appearences of "javaw" and replace them by "java" (remove "w")



## Known Issues

#### Server

- Expressions: like "float + str" do not work; needs to be something like "str(float) + str". Might be solved in DSL.
- Expressions: Java's 'true'-value needs to be converted to python's 'True'. Might be solved in PyHelper inside the DSL.
- DropRowByCondition: Does not delete rows of feature-vectors!

#### MPS

- Strange behavior of #RevealType# EditorComponent: implementation of new statements/expressions leads to errors. Rebuilding the component solves that.

## Future Work

#### Server

#### MPS

- MultipeTypesStatement: allow e.g. provide- or store-statements to handle more than one object at once.
- StoreStatement: add optional FileType child. ICanBeStored than requires two methods: getDefaultFileType and getApplicableFileTypes