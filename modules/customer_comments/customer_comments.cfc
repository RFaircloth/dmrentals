
<cfcomponent>
	

	<cffunction	name				=	"mGetAllCustomerComments"
					displayName 	=	"mGetAllCustomerComments"
					hint 				=	"Gets all customer comments"
					output 			=	"false"
					access 			=	"public"
					returnType 		=	"query" >
						
					<cfargument name = "site_dsn" 	type = "string" 	required = "yes" />

					<cfquery 	name = "qGetAllCustomerComments" 	datasource = "#arguments.site_dsn#" >
				
						select 		*
						from 			customer_comments
						order by  	date_entered desc

					</cfquery>

					<cfreturn qGetAllCustomerComments />

	</cffunction>


	<cffunction	name				=	"mGetLastTwoCustomerComments"
					displayName 	=	"mGetLastTwoCustomerComments"
					hint 				=	"Gets last two customer comments"
					output 			=	"false"
					access 			=	"public"
					returnType 		=	"query" >
						
					<cfargument name = "site_dsn" 	type = "string" 	required = "yes" />

					<cfquery 	name = "qGetLastTwoCustomerComments" 	datasource = "#arguments.site_dsn#" >
				
						select 		*
						from 			customer_comments
						order by  	date_entered desc
						limit 		3
						
					</cfquery>

					<cfreturn qGetLastTwoCustomerComments />

	</cffunction>	


</cfcomponent>